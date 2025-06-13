import React, { useState } from "react";
import { getHabitatsForBird, getBirdDetails } from "./api";
import {
  Container,
  Typography,
  TextField,
  Button,
  Alert,
  Table,
  TableBody,
  TableCell,
  TableContainer,
  TableHead,
  TableRow,
  Paper,
  Stack,
} from "@mui/material";

// 4. Using React, handle the form submission for 3.1, invoke the Controller at 3.2 and display the results.

function BirdHabitatForm() {
  const [birdId, setBirdId] = useState("");
  const [habitats, setHabitats] = useState([]);
  const [birdDetails, setBirdDetails] = useState(null);
  const [error, setError] = useState(null);

  const handleSubmit = async (e) => {
    e.preventDefault();
    setError(null);
    setHabitats([]);
    setBirdDetails(null);

    try {
      const [habitatsData, birdData] = await Promise.all([
        getHabitatsForBird(birdId),
        // added a second fetch to get the bird data because i wanted to display it on the page, could alternatively
        // combine the queries into one but I wanted to adhere to the instructions.
        getBirdDetails(birdId),
      ]);

      setHabitats(habitatsData);
      setBirdDetails(birdData);
    } catch (err) {
      setError(err.message);
    }
  };

  return (
    <Container maxWidth="sm" sx={{ mt: 4 }}>
      <Typography variant="h4" sx={{ mb: 2 }}>
        Find Bird Habitats
      </Typography>

      <Stack
        component="form"
        onSubmit={handleSubmit}
        direction="row"
        spacing={2}
        sx={{ mb: 2 }}
      >
        <TextField
          label="Bird ID"
          type="number"
          value={birdId}
          onChange={(e) => setBirdId(e.target.value)}
          required
          size="small"
        />
        <Button variant="contained" size="small" type="submit">
          Submit
        </Button>
      </Stack>

      {error && <Alert severity="error">{error}</Alert>}

      {birdDetails && (
        <Paper sx={{ p: 2, mb: 2 }}>
          <Typography variant="h6">{birdDetails.commonName}</Typography>
          <Typography variant="subtitle1" color="text.secondary" sx={{fontStyle: 'italic'}}>
            {birdDetails.scientificName}
          </Typography>
        </Paper>
      )}

      {habitats.length > 0 && (
        <TableContainer component={Paper} sx={{ mt: 3 }}>
          <Table>
            <TableHead>
              <TableRow>
                <TableCell sx={{fontWeight: 'bold'}}>#</TableCell>
                <TableCell  align="left" sx={{fontWeight: 'bold'}}>Habitat Name</TableCell>
              </TableRow>
            </TableHead>
            <TableBody>
              {habitats.map((habitat, index) => (
                <TableRow key={index}>
                  <TableCell>{index + 1}</TableCell>
                  <TableCell align="left">{habitat}</TableCell>
                </TableRow>
              ))}
            </TableBody>
          </Table>
        </TableContainer>
      )}
    </Container>
  );
}

export default BirdHabitatForm;
